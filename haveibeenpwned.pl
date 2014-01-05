#!/usr/bin/perl

use Term::ANSIColor;
print color 'bold cyan';
print <<pwnsearch;
 
 _______  _     _  __    _  _______  ______   ______  
|       || | _ | ||  |  | ||       ||      | |      | 
|    _  || || || ||   |_| ||    ___||  _    ||___   | 
|   |_| ||       ||       ||   |___ | | |   |  __|  | 
|    ___||       ||  _    ||    ___|| |_|   | |_____| 
|   |    |   _   || | |   ||   |___ |       |   __    
|___|    |__| |__||_|  |__||_______||______|   |__|    _______  _     _  __    _  _______  ______   ______  
|       || | _ | ||  |  | ||       ||      | |      | 
|    _  || || || ||   |_| ||    ___||  _    ||___   | 
|   |_| ||       ||       ||   |___ | | |   |  __|  | 
|    ___||       ||  _    ||    ___|| |_|   | |_____| 
|   |    |   _   || | |   ||   |___ |       |   __    
|___|    |__| |__||_|  |__||_______||______|   |__|     
                                 PedroLopes
pwnsearch
print color 'reset';
$email=$ARGV[0] || die "\t\t\t[!] Enter a valid email for search.\n       haveibeenpwned.pl <email_address>\n\n";
 
my @API="http://haveibeenpwned.com/api/breachedaccount/";
 
use LWP::UserAgent;
 
my $agent = LWP::UserAgent->new;
$agent->agent("PWned - Searching you!");
 
$search = HTTP::Request->new(GET => "@API/$email/");
$result = $agent->request($search);
 
if ($result->is_success) {
print color 'bold red';
print "\n";
print "\t\t\t[ALERT!] Sorry your email $email have been pwned ";
print $result->content;
print "\n\n";
print color 'reset';
}
else {
print color 'green';
print "\n";
print "\t\t\t[SAFE!] Yahhh! your email is not pwned !! ";
print $result->status_line,"\n\n";
print color 'reset';
}
