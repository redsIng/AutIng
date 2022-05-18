import java.io.UnsupportedEncodingException;
import java.util.Arrays;

class HelloWorld {
    public static float[] parse(String str) {
        float[] r = new float[1];
        if (str != null) {
            String nobrackets = str.replaceAll("[\\p{Ps}\\p{Pe}]", "");
            String[] strValues = nobrackets.split(",");
            r = new float[strValues.length];
            for (int i = 0; i < strValues.length; i++) {
                r[i] = Float.parseFloat(strValues[i]);
            }
        }
        return r;
    }

    public static void main(String[] args) {
        String str = "[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]";
        try {
            System.out.println(str.getBytes("UTF-32").length);
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
