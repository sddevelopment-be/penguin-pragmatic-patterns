package be.sddevelopment.glossary;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static java.lang.System.lineSeparator;
import static java.util.Comparator.comparing;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toMap;

public class GlossaryBookWriter {
    private final String pageTitle;

    public GlossaryBookWriter(String pageTitle) {
        this.pageTitle = pageTitle;
    }

    public GlossaryBookWriter() {
        pageTitle = "Glossary";
    }

    public String writeToMarkdown(GlossaryEntry input) {
        StringBuilder sb = new StringBuilder(emphasize(input.term().trim())).append(". ");
        if (input.hasAbbreviation() || input.hasAliases()) {
            sb.append(" ")
                    .append("(").append(writeAdditionalInformation(input)).append(")")
                    .append(" ");
        }
        sb.append(input.definition().trim())
                .append(input.definition().trim().endsWith(".") ? "" : ".");
        return sb.toString();
    }

    private String writeAdditionalInformation(GlossaryEntry input) {
        StringBuilder sb = new StringBuilder();
        if (input.hasAbbreviation()) {
            sb.append("abbr. ").append(input.abbreviation());
        }
        if (input.hasAbbreviation() && input.hasAliases()) {
            sb.append(", ");
        }
        if (input.hasAliases()) {
            sb.append("aka. ").append(formatAliases(input.aliases()));
        }
        return sb.toString();
    }

    private String formatAliases(List<String> aliases) {
        return aliases.stream()
                .map("`%s`"::formatted)
                .collect(joining(", "));
    }

    private String emphasize(String term) {
        return "**%s**".formatted(term);
    }

    public String writeToPage(List<GlossaryEntry> entries) {
        var dictionary = entries.stream()
                .sorted(comparing(GlossaryEntry::term))
                .collect(toMap(
                        s -> s.term().substring(0, 1).toUpperCase(),
                        s -> List.of(writeToMarkdown(s)),
                        (l1, l2) -> {
                            var result = new ArrayList<>(l1);
                            result.addAll(l2);
                            return result;
                        }
                ));
        return "%s%n%s".formatted(
                "# %s%n".formatted(pageTitle),
                dictionary.entrySet().stream().map(GlossaryBookWriter::glossarySection).collect(joining(lineSeparator()))
        );
    }

    private static String glossarySection(Map.Entry<String, List<String>> e) {
        return "## %s%n%n%s%n".formatted(e.getKey(), e.getValue().stream().collect(joining(lineSeparator() + lineSeparator())));
    }
}
