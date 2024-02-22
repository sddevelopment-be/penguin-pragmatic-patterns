package be.sddevelopment.glossary;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import static org.apache.commons.lang3.StringUtils.isNotBlank;

public record GlossaryEntry(
        String term,
        String definition,
        String abbreviation,
        List<String> aliases
) {
    private static final GlossaryEntry EMPTY = new GlossaryEntry("", "", "", List.of());

    public GlossaryEntry(String term, String definition) {
        this(term, definition, EMPTY.abbreviation(), EMPTY.aliases());
    }

    public GlossaryEntry(String term, String definition, String abbreviation) {
        this(term, definition, abbreviation, EMPTY.aliases());
    }

    public GlossaryEntry(String term, String definition, String abbreviation, List<String> aliases) {
        this.term = term;
        this.definition = definition;
        this.abbreviation = abbreviation;
        this.aliases = new ArrayList<>(new HashSet<>(aliases));
    }

    public boolean hasAbbreviation() {
        return isNotBlank(abbreviation);
    }

    public boolean hasAliases() {
        return !aliases.isEmpty() && aliases.stream().anyMatch(StringUtils::isNotBlank);
    }
}
