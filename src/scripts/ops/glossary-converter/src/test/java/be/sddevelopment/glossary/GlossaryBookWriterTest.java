package be.sddevelopment.glossary;

import org.assertj.core.api.WithAssertions;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.function.Predicate;

class GlossaryBookWriterTest implements WithAssertions {

    @Test
    void writesEntryToBookFormatMarkdown() {
        GlossaryEntry input = new GlossaryEntry(
                "term",
                "definition",
                "abbreviation",
                List.of("alias1", "alias2")
        );
        assertThat(input)
                .matches(GlossaryEntry::hasAbbreviation)
                .matches(GlossaryEntry::hasAliases);

        var result = new GlossaryBookWriter().writeToMarkdown(input);

        assertThat(result).isEqualToIgnoringWhitespace("""
                **term**. (abbr. abbreviation, aka. `alias1`, `alias2`) definition.
                """);
    }

    @Test
    void canDealWithEmptyAbbreviationValues() {
        GlossaryEntry input = new GlossaryEntry(
                "term",
                "definition",
                "",
                List.of("alias1", "alias2")
        );
        assertThat(input)
                .matches(Predicate.not(GlossaryEntry::hasAbbreviation))
                .matches(GlossaryEntry::hasAliases);

        var result = new GlossaryBookWriter().writeToMarkdown(input);

        assertThat(result).isEqualToIgnoringWhitespace("""
                **term**. (aka. `alias1`, `alias2`) definition.
                """);
    }

    @Test
    void canDealWithEmptyAliases() {
        GlossaryEntry input = new GlossaryEntry(
                "term",
                "definition",
                "abbreviation"
        );
        assertThat(input)
                .matches(GlossaryEntry::hasAbbreviation)
                .matches(Predicate.not(GlossaryEntry::hasAliases));

        var result = new GlossaryBookWriter().writeToMarkdown(input);

        assertThat(result).isEqualToIgnoringWhitespace("""
                **term**. (abbr. abbreviation) definition.
                """);
    }

    @Test
    void canWriteMinimalEntries() {
        GlossaryEntry input = new GlossaryEntry(
                "term",
                "definition"
        );

        var result = new GlossaryBookWriter().writeToMarkdown(input);

        assertThat(result).isEqualToIgnoringWhitespace("""
                **term**. definition.
                """);
    }

    @Test
    void writesEntryCollectionToPage() {
        GlossaryEntry entryOne = new GlossaryEntry(
                "A term",
                "definition of A term",
                "A",
                List.of("first")
        );
        GlossaryEntry entryTwo = new GlossaryEntry(
                "B term",
                "definition",
                "B"
        );
        GlossaryEntry entryThree = new GlossaryEntry(
                "A term two",
                "definition of Another term.",
                "A",
                List.of("2nd")
        );

        var result = new GlossaryBookWriter("Glossary").writeToPage(List.of(entryThree, entryTwo, entryOne));

        assertThat(result).isEqualToIgnoringWhitespace("""
                # Glossary
                                
                ## A
                                
                **A term**. (abbr. A, aka. `first`) definition of A term.
                
                **A term two**. (abbr. A, aka. `2nd`) definition of Another term.
                                
                ## B
                                
                **B term**. (abbr. B) definition.
                """
        );

    }
}
