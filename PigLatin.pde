public void setup()
{
  String[] lines = new String[]{"beast", "dough", "happy", "question", "star", "three", "eagle", "try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++)
  {
    System.out.println(pigLatin(lines[i]));
  }
}


public void draw() {
}


public int findFirstVowel(String sWord) {
  for (int i = 0; i < sWord.length(); i++) {
    char j = sWord.charAt(i);
    if (j == 'a' || j == 'e' || j == 'i' || j == 'o' || j == 'u') {
      return i;
    }
  }
  return -1;
}

public String pigLatin(String sWord) {

  if (findFirstVowel(sWord) == -1) {
    return sWord + "ay";
  } else if (findFirstVowel(sWord) == 0) {
    return sWord + "way";
  } else if (findFirstVowel(sWord) != -1) {
    return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  } else {
    return "!error!";
  }
}
