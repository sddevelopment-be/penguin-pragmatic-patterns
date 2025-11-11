#!/usr/bin/env python3
"""
Generate Contextive-compatible glossary files from TOML source.

This script reads the glossary.toml file and generates separate YAML files
for each domain in the .contextive/ directory. Each YAML file follows the
Contextive format for IDE integration with ubiquitous language support.

Usage:
    python3 generate_contextive_glossary.py

Output:
    Creates .contextive/<domain>.glossary.yml files
"""

import tomllib
from pathlib import Path
from collections import defaultdict
import yaml


# Domain vision statements for each context
DOMAIN_VISION_STATEMENTS = {
    "software": "Professional software development aims to solve human problems by leveraging technological solutions.",
    "communication": "Effective communication enables collaboration and shared understanding across teams and stakeholders.",
    "productivity": "Productivity practices help individuals and teams achieve their goals efficiently and sustainably.",
    "hardware": "Hardware concepts encompass the physical components and infrastructure that enable computing systems.",
    "learning": "Learning and knowledge acquisition are essential for professional growth and adaptation.",
    "management": "Management practices guide effective leadership and organizational coordination.",
    "psychology": "Understanding human behavior and cognition improves collaboration and decision-making.",
    "strategy": "Strategic thinking enables long-term planning and alignment with organizational goals.",
    "security": "Security practices protect systems, data, and users from threats and vulnerabilities.",
    "quality assurance": "Quality assurance ensures that products and services meet required standards and expectations.",
}

# Default vision statement for domains not explicitly defined
DEFAULT_VISION = "This domain encompasses specialized terminology and concepts used in professional practice."


def normalize_domain(domain: str) -> str:
    """Normalize domain name for consistency."""
    if not domain or domain.strip() == "":
        return "general"
    
    # Normalize common variations
    domain_lower = domain.lower().strip()
    
    # Handle common typos and variations
    normalization_map = {
        "software architecure": "software architecture",
        "problem soving": "problem solving",
        "software engineering, code quality": "software engineering",
        "software engineering, system design": "software engineering",
        "user experience, content strategy": "user experience",
        "user experience, technical communication": "user experience",
        "marketing, technical communication": "technical communication",
        "productivity, task management": "productivity",
        "quality management, process improvement": "quality management",
        "systems theory, decision-making, leadership": "systems theory",
        "metrics and decision-making": "metrics",
        "software development": "software",
        "software architecture": "software",
    }
    
    return normalization_map.get(domain_lower, domain_lower)


def get_domain_vision_statement(domain: str) -> str:
    """Get the vision statement for a domain."""
    return DOMAIN_VISION_STATEMENTS.get(domain, DEFAULT_VISION)


def sanitize_filename(domain: str) -> str:
    """Convert domain name to a safe filename."""
    # Replace spaces and special characters with underscores
    safe_name = domain.replace(" ", "_").replace(",", "").replace("&", "and")
    # Remove any remaining problematic characters
    safe_name = "".join(c for c in safe_name if c.isalnum() or c in "._-")
    return safe_name.lower()


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
    """Generate Contextive YAML files from TOML glossary."""
    # Read TOML file
    with open(toml_path, "rb") as f:
        data = tomllib.load(f)
    
    # Group terms by domain
    terms_by_domain = defaultdict(list)
    for term in data.get("terminology", []):
        domain = normalize_domain(term.get("domain", ""))
        terms_by_domain[domain].append(term)
    
    # Create output directory if it doesn't exist
    output_dir.mkdir(parents=True, exist_ok=True)
    
    # Generate a YAML file for each domain
    for domain, terms in sorted(terms_by_domain.items()):
        # Create the context structure
        context_name = domain.title() if domain != "general" else "General"
        
        context = {
            "contexts": [
                {
                    "name": context_name,
                    "domainVisionStatement": get_domain_vision_statement(domain),
                    "meta": {
                        "👥 Owner": "Patterns Team"
                    },
                    "terms": [format_term_for_contextive(term) for term in sorted(terms, key=lambda t: t["name"])]
                }
            ]
        }
        
        # Write to YAML file
        filename = f"{sanitize_filename(domain)}.glossary.yml"
        output_path = output_dir / filename
        
        with open(output_path, "w", encoding="utf-8") as f:
            # Add header comment
            f.write(f"# Contextive Glossary: {context_name}\n")
            f.write(f"# Auto-generated from data/glossary.toml\n")
            f.write(f"# Domain: {domain}\n")
            f.write(f"# Terms: {len(terms)}\n")
            f.write("#\n")
            f.write("# This file provides IDE integration for ubiquitous language terms.\n")
            f.write("# See https://docs.contextive.tech for more information.\n\n")
            
            # Write YAML content
            yaml.dump(context, f, default_flow_style=False, allow_unicode=True, sort_keys=False)
        
        print(f"Generated: {filename} ({len(terms)} terms)")
    
    print(f"\nTotal: {len(terms_by_domain)} domain files generated in {output_dir}")


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
