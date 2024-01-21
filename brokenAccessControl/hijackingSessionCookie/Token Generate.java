import java.io.File;
import java.io.IOException;
import java.io.FileWriter;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Comparator;

class Filename_error extends IOException
{
    Filename_error(String message)
    {
        super(message);
    }
}

class Token_Generate
{
    public static void main(String[] args)
    {
        String file_locate = ".//tokens";

        File name = new File(".//gen_token");
        try
        {
            ArrayList<String> tokens = Readfile(file_locate);
            tokens.sort(Comparator.naturalOrder());
            ArrayList<String> Generated = new ArrayList<String>();
            for (int i = 0 ; i < tokens.size() - 1; i++)
            {
                String[] S0 = (tokens.get(i)).split("-");
                String[] S1 = (tokens.get(i + 1)).split("-");
                String possible = new String();
                if(Long.parseLong(S1[0]) - Long.parseLong(S0[0]) == 2)
                {
                    int j = 0;
                    possible = String.valueOf(Long.parseLong(S1[0]) - 1);
                    while(Long.parseLong(S1[1]) >= Long.parseLong(S0[1]) + j)
                    {
                        Generated.add(possible + "-" + String.valueOf(Long.parseLong(S0[1]) + j));
                        j++;
                    }
                }
            }
            Writefile(name, Generated);
        }
        catch(Filename_error Event)
        {
            System.err.println("檔案名稱錯誤" + Event.getMessage());
        }
    }

    private static ArrayList<String> Readfile(String location) throws Filename_error
    {
        try(Scanner token = new Scanner(new File(location)))
        {
            ArrayList<String> tokens = new ArrayList<String>();
            while (token.hasNextLine())
            {
                String Num = token.nextLine();
                tokens.add(Num);
            }
            return tokens;
        }
        catch (IOException Event)
        {
            throw new Filename_error("無法讀取檔案" + Event.getMessage());
        }
    }

    private static void Writefile(File name, ArrayList<String> tokens) throws Filename_error
    {   
        try
        {
            name.createNewFile();
        }
        catch(IOException Event)
        {
            throw new Filename_error("檔案無法創建" + Event.getMessage());
        }
        try(FileWriter Generated_token = new FileWriter(name))
        {
            for (String token : tokens)
            {
                Generated_token.write(token + "\n");
            }
        }
        catch(IOException Event)
        {
            throw new Filename_error("檔案寫入錯誤" + Event.getMessage());
        }
    }
}