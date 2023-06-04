package techproed.runners;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(plugin = {"pretty",
        "html:src/test/resources/features/htmlReport/cucumberHooks.html",
        "json:src/test/resources/features/htmlReport/cucumber.json",
        "junit:src/test/resources/features/htmlReport/cucumber.xml",
        "rerun:TestOutput/failed_scenario.txt"},
        features = "@TestOutput/failed_scenario.txt",
        glue = {"techproed/stepDefinitions"},
        dryRun = false,
        monochrome = true

)

public class FailedRun {
}