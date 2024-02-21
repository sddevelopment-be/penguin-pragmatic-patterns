package be.sddevelopment.glossary;

import org.apache.commons.lang3.StringUtils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.*;
import java.util.stream.Collectors;

public class GlossaryParser {

    private static final String TERM_START = "[[terminology]]";
    public static final String DEFINITION_INDICATOR = "\"\"\"";
    public static final String ALIAS_INDICATOR = "aliases = [";
    public static final String ABBREVIATION = "abbreviation =";

    public List<GlossaryEntry> parse(Path pathToFile) throws IOException {
        if (!pathToFile.toFile().exists()) {
            throw new IllegalArgumentException("File %s does not exist".formatted(pathToFile));
        }
        var lines = Files.readAllLines(pathToFile);
        return groupLinesByTerm(lines)
                .entrySet()
                .parallelStream()
                .map(GlossaryParser::toGlossaryEntry)
                .toList();
    }

    private static Map<String, List<String>> groupLinesByTerm(List<String> lines) {
        Map<String, List<String>> entries = new HashMap<>();
        List<String> currentGroup = new ArrayList<>();
        lines.stream().filter(StringUtils::isNotBlank).forEach(
                line -> {
                    if (line.contains(TERM_START)) {
                        if (!currentGroup.isEmpty()) {
                            entries.put(identifier(currentGroup.get(0)), new ArrayList<>(currentGroup));
                            currentGroup.clear();
                        }
                    } else {
                        currentGroup.add(line);
                    }
                }
        );
        if (!currentGroup.isEmpty()) {
            entries.put(identifier(currentGroup.get(0)), new ArrayList<>(currentGroup));
            currentGroup.clear();
        }

        return entries;
    }

    private static String flattenLines(List<String> rawLines) {
        return rawLines.stream()
                .map(StringUtils::trim)
                .filter(StringUtils::isNotBlank)
                .collect(Collectors.joining(System.lineSeparator()));
    }

    public static GlossaryEntry toGlossaryEntry(Map.Entry<String, List<String>> termLines) {
        var contentBlock = flattenLines(termLines.getValue());
        return new GlossaryEntry(
                termLines.getKey().trim().strip(),
                definitionFrom(contentBlock).trim().strip(),
                abbreviationFrom(contentBlock).trim().strip(),
                aliasesFrom(contentBlock)
        );
    }

    private static String definitionFrom(String block) {
        if (!block.contains(DEFINITION_INDICATOR)) {
            return "";
        }

        return block.substring(block.indexOf(DEFINITION_INDICATOR), block.lastIndexOf(DEFINITION_INDICATOR))
                .strip()
                .replace(System.lineSeparator(), " ")
                .replace(DEFINITION_INDICATOR, "").trim();
    }

    private static String abbreviationFrom(String contentBlock) {
        if (!contentBlock.contains(ABBREVIATION)) {
            return "";
        }

        int startOfAbbreviation = contentBlock.indexOf(ABBREVIATION);
        int endOfAbbreviation = contentBlock.indexOf(System.lineSeparator(), startOfAbbreviation);
        return contentBlock.substring(startOfAbbreviation, endOfAbbreviation > 0 ? endOfAbbreviation : contentBlock.length())
                .strip()
                .replace(ABBREVIATION, "")
                .replace("\"", "")
                .trim();
    }

    private static List<String> aliasesFrom(String contentBlock) {
        if (!contentBlock.contains(ALIAS_INDICATOR)) {
            return List.of();
        }

        int startOfAliases = contentBlock.indexOf(ALIAS_INDICATOR);
        int endOfAliases = contentBlock.indexOf(System.lineSeparator(), startOfAliases) - 1;
        var aliasesSpec = contentBlock.substring(startOfAliases, endOfAliases > 0 ? endOfAliases : contentBlock.length())
                .strip()
                .replace(ALIAS_INDICATOR, "")
                .replace("]","" )
                .trim();
        return Arrays.stream(aliasesSpec.split(","))
                .map(s -> s.replace("\"", ""))
                .filter(StringUtils::isNotBlank)
                .map(String::strip)
                .map(String::trim)
                .toList();
    }

    public static String identifier(String s) {
        return s.replace("name = \"", "").replace("\"", "").trim();
    }

}
