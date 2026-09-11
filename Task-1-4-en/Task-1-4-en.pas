uses
  System;
begin
  var h1 : Cardinal; // Current time in hours
  var m1 : Cardinal; // Current time in minutes
  Console.Write('How many hours is now? (0-23): ');
  Cardinal.TryParse(Console.ReadLine(), h1);
  Console.Write('How many minutes is now? (0-59): ');
  Cardinal.TryParse(Console.ReadLine(), m1);
  var m2 := h1 * 60 + m1; // Current time translated into minutes
  var m3 := 24 * 60; // Midnight time (hours per day) translated into minutes 
  var dm := m3 - m2; // Remaining time until midnight In minutes
  var h2 := dm div 60; // Remaining time until midnight in full hours
  m2 := dm mod 60; // Remaining quantity Of minutes until End Of the hour Is calculated before
  // --Output of information to display--
  Console.WriteLine($'{h2} : {m2} is remaining until midnight.');
  Console.Read(); // Press key "Enter" to close window
end.