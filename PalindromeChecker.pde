public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i]))
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = lettersOnly(word);
  return word.substring(0,(int)word.length()/2).equals(reverse(word.substring((int)word.length()/2 - 1+ (word.length() % 2 == 0? 1 : 2))));
}
public String reverse(String str)
{
    String sNew = new String();
    for(int a = str.length() -1; a >= 0; a--){
      sNew += str.substring(a, a + 1);
    }
    return sNew;
}
public String lettersOnly(String str){
  String yay = new String();
  for(int a = 0; a < str.length(); a++){
    if(str.charAt(a) != ',' && str.charAt(a) != '\'' && str.charAt(a) != '!' && str.charAt(a) != ' ' && str.charAt(a) != '.'){
      yay += str.substring(a, a + 1);
    }
  }
  return yay.toLowerCase();
}