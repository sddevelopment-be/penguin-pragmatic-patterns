package be.sddevelopment.glossary;

import java.util.List;

public class GlossaryBookWriter {
    private final String pageTitle;

    public GlossaryBookWriter(String pageTitle) {
        this.pageTitle = pageTitle;
    }

    public GlossaryBookWriter() {
        pageTitle = "";
    }

    public String writeToMarkdown(GlossaryEntry input) {
        return null;
    }


    public String writeToPage(List<GlossaryEntry> entryOne) {
        return null;
    }
}
