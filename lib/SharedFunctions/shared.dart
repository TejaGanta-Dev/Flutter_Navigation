 
 class Shared{
  static String formatCurrency(double amount) {
    // Split the amount into dollars and cents
    List<String> parts = amount.toStringAsFixed(2).split('.');
    String dollars = parts[0];
    String cents = parts[1];

    // Add commas for thousands separator
    String formattedDollars = '';
    for (int i = dollars.length - 1; i >= 0; i--) {
      formattedDollars = dollars[i] + formattedDollars;
      if ((dollars.length - i) % 3 == 0 && i > 0) {
        formattedDollars = ',' + formattedDollars;
      }
    }

    // Add leading zero if necessary
    if (formattedDollars.startsWith(',')) {
      formattedDollars = '0' + formattedDollars;
    }

    // Return formatted currency string
    return '\$$formattedDollars.$cents';
  }
 }