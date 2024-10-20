package pets;

import com.intuit.karate.junit5.Karate;

public class PetsGetRunner {
    @Karate.Test
    Karate petGet() {
        return Karate.run("pets").relativeTo(getClass());
    }
}
