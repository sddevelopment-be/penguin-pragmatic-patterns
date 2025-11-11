#!/usr/bin/env python3
"""
Generate Contextive-compatible glossary files from TOML source.

This script reads the glossary.toml file and consolidates terms into 4 main
category YAML files in the .contextive/ directory. Each YAML file follows the
Contextive format for IDE integration with ubiquitous language support.

Usage:
    python3 generate_contextive_glossary.py

Output:
    Creates .contextive/<category>.glossary.yml files:
    - software.glossary.yml (software development and architecture)
    - communication.glossary.yml (communication and collaboration)
    - productivity.glossary.yml (productivity and task management)
    - learning.glossary.yml (learning and professional growth)
"""

import tomllib
from pathlib import Path
from collections import defaultdict
import yaml


# Domain vision statements for each main category
DOMAIN_VISION_STATEMENTS = {
    "software": "Professional software development and architecture aim to solve human problems by leveraging technological solutions and sound design principles.",
    "communication": "Effective communication and collaboration enable shared understanding across teams, stakeholders, and communities.",
    "productivity": "Productivity practices help individuals and teams achieve their goals efficiently, sustainably, and with minimal waste.",
    "learning": "Learning and knowledge acquisition are essential for professional growth, adaptation, and continuous improvement.",
}


def categorize_domain(domain: str) -> str:
    """Map any domain to one of the 4 main categories."""
    if not domain or domain.strip() == "":
        return "learning"  # Default for uncategorized terms
    
    domain_lower = domain.lower().strip()
    
    # Software category: development, architecture, engineering, quality, security, systems
    software_keywords = [
        "software", "architecture", "engineering", "code", "system", "hardware",
        "computer", "network", "security", "quality assurance", "development",
        "technical", "programming", "api", "design pattern"
    ]
    
    # Communication category: collaboration, interaction, social, behavioral
    communication_keywords = [
        "communication", "collaboration", "social", "interpersonal", "conversation",
        "cooperation", "team", "dynamics", "psychological", "behavioral economics"
    ]
    
    # Productivity category: efficiency, management, organization, strategy
    productivity_keywords = [
        "productivity", "management", "project", "task", "efficiency", "planning",
        "organization", "strategy", "process", "metrics", "measurement", "evaluation",
        "decision-making", "problem solving", "talent acquisition", "enterprise"
    ]
    
    # Learning category: education, knowledge, cognitive, personal development
    learning_keywords = [
        "learning", "knowledge", "education", "cognitive", "psychology", "personal development",
        "professional growth", "reasoning", "evidence", "self-awareness", "thinking",
        "analysis", "folklore", "history", "philosophy", "physics", "ethics"
    ]
    
    # Check each category in priority order
    for keyword in software_keywords:
        if keyword in domain_lower:
            return "software"
    
    for keyword in communication_keywords:
        if keyword in domain_lower:
            return "communication"
    
    for keyword in productivity_keywords:
        if keyword in domain_lower:
            return "productivity"
    
    for keyword in learning_keywords:
        if keyword in domain_lower:
            return "learning"
    
    # Default to learning for uncategorized
    return "learning"

def get_domain_vision_statement(category: str) -> str:
    """Get the vision statement for a main category."""
    return DOMAIN_VISION_STATEMENTS.get(category, DOMAIN_VISION_STATEMENTS["learning"])


def format_term_for_contextive(term: dict) -> dict:
    """Convert a TOML term entry to Contextive format."""
    contextive_term = {
        "name": term["name"]
    }
    
    # Map description to definition
    if "description" in term and term["description"]:
        contextive_term["definition"] = term["description"].strip()
    
    # Combine aliases with abbreviation if present
    aliases = []
    if term.get("aliases"):
        aliases.extend(term["aliases"])
    if term.get("abbreviation") and term["abbreviation"].strip():
        if term["abbreviation"] not in aliases:
            aliases.append(term["abbreviation"])
    
    if aliases:
        contextive_term["aliases"] = aliases
    
    # Convert references to examples
    examples = []
    if term.get("references"):
        for ref in term["references"]:
            if ref.get("title") and ref.get("link"):
                examples.append(f"See: [{ref['title']}]({ref['link']}) for more details.")
            elif ref.get("title"):
                examples.append(f"Reference: {ref['title']}")
    
    if examples:
        contextive_term["examples"] = examples
    
    return contextive_term


def generate_contextive_glossaries(toml_path: Path, output_dir: Path):
    """Generate consolidated Contextive YAML files from TOML glossary."""
    # Read TOML file
    with open(toml_path, "rb") as f:
        data = tomllib.load(f)
    
    # Group terms by main category (4 categories)
    terms_by_category = defaultdict(list)
    for term in data.get("terminology", []):
        category = categorize_domain(term.get("domain", ""))
        terms_by_category[category].append(term)
    
    # Create output directory if it doesn't exist
    output_dir.mkdir(parents=True, exist_ok=True)
    
    # Remove old glossary files
    for old_file in output_dir.glob("*.glossary.yml"):
        old_file.unlink()
        print(f"Removed old file: {old_file.name}")
    
    # Generate a YAML file for each main category
    for category, terms in sorted(terms_by_category.items()):
        # Create the context structure
        context_name = category.title()
        
        context = {
            "contexts": [
                {
                    "name": context_name,
                    "domainVisionStatement": get_domain_vision_statement(category),
                    "meta": {
                        "👥 Owner": "Patterns Team"
                    },
                    "terms": [format_term_for_contextive(term) for term in sorted(terms, key=lambda t: t["name"])]
                }
            ]
        }
        
        # Write to YAML file
        filename = f"{category}.glossary.yml"
        output_path = output_dir / filename
        
        with open(output_path, "w", encoding="utf-8") as f:
            # Add header comment
            f.write(f"# Contextive Glossary: {context_name}\n")
            f.write(f"# Auto-generated from data/glossary.toml\n")
            f.write(f"# Category: {category}\n")
            f.write(f"# Terms: {len(terms)}\n")
            f.write("#\n")
            f.write("# This file provides IDE integration for ubiquitous language terms.\n")
            f.write("# See https://docs.contextive.tech for more information.\n\n")
            
            # Write YAML content
            yaml.dump(context, f, default_flow_style=False, allow_unicode=True, sort_keys=False)
        
        print(f"Generated: {filename} ({len(terms)} terms)")
    
    print(f"\nTotal: {len(terms_by_category)} category files generated in {output_dir}")


def main():
    """Main entry point."""
    # Determine paths relative to script location
    script_dir = Path(__file__).parent
    repo_root = script_dir.parent.parent.parent
    
    toml_path = repo_root / "data" / "glossary.toml"
    output_dir = repo_root / ".contextive"
    
    if not toml_path.exists():
        print(f"Error: {toml_path} not found")
        return 1
    
    print(f"Reading glossary from: {toml_path}")
    print(f"Output directory: {output_dir}\n")
    
    generate_contextive_glossaries(toml_path, output_dir)
    
    return 0


if __name__ == "__main__":
    exit(main())
