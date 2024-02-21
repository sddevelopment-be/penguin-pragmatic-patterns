package be.sddevelopment.glossary;

import org.assertj.core.api.WithAssertions;
import org.junit.jupiter.api.Test;

import java.util.List;

class GlossaryBookWriterTest implements WithAssertions {


    @Test
    void writesEntryToBookFormatMarkdown() {
        GlossaryEntry input = new GlossaryEntry(
                "term",
                "definition",
                "abbreviation",
                List.of("alias1", "alias2")
        );

        var result = new GlossaryBookWriter().writeToMarkdown(input);

        assertThat(result).isEqualTo("""
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

        var result = new GlossaryBookWriter().writeToMarkdown(input);

        assertThat(result).isEqualTo("""
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

        var result = new GlossaryBookWriter().writeToMarkdown(input);

        assertThat(result).isEqualTo("""
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

        assertThat(result).isEqualTo("""
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

        var result = new GlossaryBookWriter("Glossary").writeToPage(List.of(entryOne, entryTwo));

        assertThat(result).isEqualTo("""
                # Glossary
                
                ## A
                
                **A term**. (abbr. A, aka. `first`) definition of A term.
                
                ## B
                
                **B term**. (abbr. B) definition.
                """
        );

    }
}
