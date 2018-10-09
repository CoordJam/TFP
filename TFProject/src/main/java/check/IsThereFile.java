package check;

import java.io.File;
import java.io.IOException;

public class IsThereFile {
  public void checkFiel(String source) {
    try {
      File file = new File(source);
      // test.txt 파일이 있는지 확인
      if (file.isFile()) {
        System.out.println("파일이 존재합니다.");
        System.out.println(source);
        System.out.println(file.getCanonicalPath().toString());
        System.out.println();
      } else {
        System.out.println(source + " ::소스.");
        System.out.println("파일이 없습니다. ");
      }
      File dir = new File(source);
      // 디렉토리들이 있는지 확인
      if (dir.isDirectory()) {
        System.out.println("디렉토리가 존재합니다.");
        System.out.println(dir.getCanonicalPath().toString());
      } else {
        System.out.println("디렉토리가 없습니다. ");
      }
    } catch (IOException E) {
    }
  }
}
