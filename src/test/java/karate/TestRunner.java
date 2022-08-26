package karate;
import com.intuit.karate.junit5.Karate;

class TestRunner {
    @Karate.Test
    Karate testFeatures() {
        return Karate.run("test").relativeTo(getClass());
        }
    }