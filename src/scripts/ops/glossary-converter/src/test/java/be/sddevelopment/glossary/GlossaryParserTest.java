package be.sddevelopment.glossary;

import org.assertj.core.api.WithAssertions;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import static java.util.Optional.ofNullable;

class GlossaryParserTest implements WithAssertions {

    @Test
    void parsesEntriesFromGlossaryFile() throws IOException {
        var fileToParse = testResouce("glossary.toml");
        assertThat(fileToParse).exists();

        var entries = new GlossaryParser().parse(fileToParse);

        assertThat(entries).isNotEmpty()
                .usingRecursiveFieldByFieldElementComparator()
                .containsExactlyInAnyOrder(
                        new GlossaryEntry(
                                "Application Programming Interface",
                                "Specifies a set of software functions that are made available to an application programmer. The API typically includes function names, the parameters that can be passed into each function, and a description of the return values one can expect.",
                                "API"
                        ),
                        new GlossaryEntry(
                                "Asymmetric clustering",
                                "One machine is in hot-standby mode and does nothing by monitor the other. In case of failure, the hot-standby takes over.",
                                "",
                                List.of("failover configuration")
                        ),
                        new GlossaryEntry(
                                "Blade servers",
                                "A single chassis with multiple processor boards, I/O boards, and networking boards. Each processor board boots independently and runs its own operating system."
                        )
                );
    }

    @Test
    void parsesTermFromTextBlock() {
        var input = Map.entry("Application Programming Interface",
                List.of(
                        "[[terminology]]\n",
                        "term =\"Application Programming Interfac\"\n",
                        "definition = \"\"\"\n",
                        "Specifies a set of software functions that are made available to an application programmer.\n",
                        "The API typically includes function names, the parameters that can be passed into each function, and a\n",
                        "description of the return values one can expect.\n",
                        "        \"\"\"\n",
                        "abbreviation = \"API\"\n",
                        "aliases = [\"API\", \"Hall of shame\"]\n"
                )
        );

        var result = GlossaryParser.toGlossaryEntry(input);

        assertThat(result).isEqualTo(new GlossaryEntry(
                "Application Programming Interface",
                "Specifies a set of software functions that are made available to an application programmer. The API typically includes function names, the parameters that can be passed into each function, and a description of the return values one can expect.",
                "API",
                List.of("API", "Hall of shame")
        ));
    }

    private Path testResouce(String s) {
        try {
            var resourceUri = ofNullable(GlossaryParserTest.class.getClassLoader())
                    .map(loader -> loader.getResource(s))
                    .orElseThrow(() -> new IllegalArgumentException("Provided file path could not be parsed."));
            return Paths.get(resourceUri.toURI());
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Provided file path could not be parsed.", e);
        }
    }


}