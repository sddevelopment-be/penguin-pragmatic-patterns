package be.sddevelopment.patterns.naming;

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
public class SomeProgram {

  public static final int MRIG = 21;
  public static final int AMOUNT = 10;
  public static final int MAX = 10;

  private final int[] down = new int[MRIG];
  private int cr = 0;

  public void go(int input) {
    down[cr++] = input;
  }

  public int calcResult() {
    int result = 0;
    int counter = 0;
    for (int i = 0; i < AMOUNT; i++) {
      if (caseOne(counter)) {
        result += 10 + bonusOne(counter);
        counter += 1;
      } else if (caseTwo(counter)) {
        result += sum(counter) + bonusTwo(counter);
        counter += 2;
      } else {
        result += sum(counter);
        counter += 2;
      }
    }
    return result;
  }

  private boolean caseOne(int in) {
    return down[in] == MAX;
  }

  private boolean caseTwo(int in) {
    return sum(in) == MAX;
  }

  private int sum(int in) {
    return down[in] + down[in + 1];
  }

  private int bonusTwo(int in) {
    return down[in + 2];
  }

  private int bonusOne(int in) {
    return down[in + 1] + down[in + 2];
  }
}
