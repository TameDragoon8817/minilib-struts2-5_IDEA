package minilib.test;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AddTypeTest {

    @Test
    void add() {
        AddType addtest = new AddType();
        int result = addtest.add(1,2);
        Assertions.assertEquals(4,result);
    }
}