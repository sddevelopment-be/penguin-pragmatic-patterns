package be.sddevelopment.glossary;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

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
}
