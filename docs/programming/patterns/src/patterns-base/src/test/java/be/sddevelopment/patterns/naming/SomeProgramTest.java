package be.sddevelopment.patterns.naming;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * <p>
 * Description of file/class
 * </p>
 *
 * <h6>Example usage</h6>
 * <pre>
 *  <code>
 *    // No example available yet
 *  </code>
 * </pre>
 *
 * <h6>References</h6>
 *
 * @author <a href="https://github.com/stijn-dejongh" target="_blank">Stijn Dejongh</a>
 * @version 1.0.0
 * @created 19.02.21, Friday
 * @since 1.0.0
 */
class SomeProgramTest {

  private SomeProgram testSubject;

  @BeforeEach
  void setUp() {
    testSubject = new SomeProgram();
  }

  @Test
  void testStart() {
    assertThat(testSubject.calcResult()).isZero();
  }

  @Test
  void testGo() {
    testSubject.go(7);
    testSubject.go(1);

    assertThat(testSubject.calcResult()).isEqualTo(8);
  }

  @Test
  void testGoTen() {
    testSubject.go(10);
    testSubject.go(10);

    assertThat(testSubject.calcResult()).isEqualTo(30);
  }

  @Test
  void testGoTenFull() {
    testSubject.go(10);
    testSubject.go(10);
    testSubject.go(10);
    testSubject.go(10);
    testSubject.go(10);
    testSubject.go(10);
    testSubject.go(10);
    testSubject.go(10);
    testSubject.go(10);
    testSubject.go(10);
    testSubject.go(10);
    testSubject.go(10);

    assertThat(testSubject.calcResult()).isEqualTo(300);
  }

}
