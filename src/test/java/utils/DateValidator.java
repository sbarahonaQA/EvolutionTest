package utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.ParseException;

public class DateValidator {

    private static final String spanishFormat = "dd/MM/yyyy";
    private static final String englishFormat = "MM/dd/yyyy";
    private enum validLanguages { es, en }
    private static validLanguages language;
    static SimpleDateFormat sdfrmt;

    public DateValidator(){
        language = validLanguages.es;
    }

    public static Date toDate(String date){
        Date date1 = new Date();

        try {
            new DateValidator();
            switch (language) {
                case es:
                    date1 = new SimpleDateFormat(spanishFormat).parse(date);
                    break;
                case en:
                    date1 = new SimpleDateFormat(englishFormat).parse(date);
                    break;
            }
        }
        catch(ParseException ex){
            return null;
        }

        return date1;
    }

    public static String todayDate(){
        SimpleDateFormat formatter = null;

        new DateValidator();
        switch (language) {
            case es:
                formatter = new SimpleDateFormat(spanishFormat);
                break;
            case en:
                formatter = new SimpleDateFormat(englishFormat);
                break;
        }

        Date date = new Date();
        return formatter.format(date);
    }

    public static String todayDate(String language){
        SimpleDateFormat formatter = null;

        switch (language){
            case "es":
                formatter = new SimpleDateFormat(spanishFormat);
                break;
            case "en":
                formatter = new SimpleDateFormat(englishFormat);
                break;
        }

        Date date = new Date();
        assert formatter != null;
        return formatter.format(date);
    }

    public static boolean validateDate(String strDate){
        if (strDate == null || strDate.trim().equals("") || strDate.isEmpty())
            return false;
        /* Date is not 'null' */
        else
        {
            new DateValidator();
            switch (language) {
                case es:
                    sdfrmt = new SimpleDateFormat(spanishFormat);
                    break;
                case en:
                    sdfrmt = new SimpleDateFormat(englishFormat);
                    break;
            }
            sdfrmt.setLenient(false);

            try
            {
                Date javaDate = sdfrmt.parse(strDate);
            }
            /* Date format is invalid */
            catch (ParseException e)
            {
                return false;
            }
            /* Return true if date format is valid */
            return true;
        }
    }

    public static boolean validateDate(String language, String strDate){
        if (strDate == null || strDate.trim().equals("") || strDate.isEmpty())
            return false;
            /* Date is not 'null' */
        else
        {
            switch (language){
                case "es":
                    sdfrmt = new SimpleDateFormat(spanishFormat);
                    break;
                case "en":
                    sdfrmt = new SimpleDateFormat(englishFormat);
                    break;
                default:
                    return false;
            }
            sdfrmt.setLenient(false);

            try
            {
                Date javaDate = sdfrmt.parse(strDate);
            }
            /* Date format is invalid */
            catch (ParseException e)
            {
                return false;
            }
            /* Return true if date format is valid */
            return true;
        }
    }
}
