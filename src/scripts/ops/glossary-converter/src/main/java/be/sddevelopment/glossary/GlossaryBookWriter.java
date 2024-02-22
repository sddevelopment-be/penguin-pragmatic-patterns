package be.sddevelopment.glossary;

import java.util.List;

import static java.util.stream.Collectors.joining;

public class GlossaryBookWriter {
    private final String pageTitle;

    public GlossaryBookWriter(String pageTitle) {
        this.pageTitle = pageTitle;
    }

    public GlossaryBookWriter() {
        pageTitle = "";
    }

    public String writeToMarkdown(GlossaryEntry input) {
        StringBuilder sb = new StringBuilder(emphasize(input.term().trim())).append(". ");
        if (input.hasAbbreviation() || input.hasAliases()) {
            sb.append(" ")
                    .append("(").append(writeAdditionalInformation(input)).append(")")
                    .append(" ");
        }
        sb.append(input.definition().trim())
                .append(".");
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
        return "";
    }
}
