package be.sddevelopment.glossary;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class GlossaryConverter {

    public static final Logger LOG = LogManager.getLogger(GlossaryConverter.class);

    public static void main(String[] args) {
        if (args.length != 2) {
            LOG.error("Please provide the path to the Glossary file and the path to the output file");
            System.exit(1);
        }

        try {
            LOG.info("Starting conversion of Glossary file");
            var pathToGlossary = Paths.get(args[0].trim());
            LOG.info("Reading Glossary file from {}", pathToGlossary);
            var result = new GlossaryParser().parse(pathToGlossary);
            LOG.info("Parsed {} entries.", result);

            var pathToOutput = Paths.get(args[1].trim());
            var toWrite = new GlossaryBookWriter().writeToPage(result);
            LOG.info("Writing Glossary to {}", pathToOutput);
            Files.write(pathToOutput, toWrite.getBytes());
            LOG.info("Wrote glossary to {}", pathToOutput);
        } catch (IOException e) {
            LOG.error("An error occurred while reading or writing the file", e);
            throw new RuntimeException(e);
        }
    }
}
