#!/usr/bin/perl

package GENERAL_CONST_LECS; #don't forget: a package must end with a return value (1; in the end)!!!!!

# constants to use when sending e-mails using the server admin's email address.
use constant ADMIN_EMAIL =>                 "TAU BioSequence <bioSequence\@tauex.tau.ac.il>";
use constant ADMIN_USER_NAME =>             "bioSequence";
use constant ADMIN_PASSWORD =>              "elana";
#use constant SMTP_SERVER =>                 "ex1.tau.ac.il";
use constant SMTP_SERVER =>                 "mxout.tau.ac.il";

# the name of the list of all running processes
use constant QUEUING_JOBS =>                "/bioseq/bioSequence_scripts_and_constants/queuing_jobs.list";
use constant RUNNING_JOBS =>                "/bioseq/bioSequence_scripts_and_constants/running_jobs.list";
use constant JOBS_ON_BIOSEQ_NODE =>         "/bioseq/bioSequence_scripts_and_constants/jobs_on_bioc.01_node.list";
use constant JOBS_WAITING_BIOSEQ_NODE =>         "/bioseq/bioSequence_scripts_and_constants/jobs_waiting_bioc.01_node.list";
use constant CONSURF_RUNNING_JOBS =>        "/bioseq/bioSequence_scripts_and_constants/consurf_running_jobs.list";
use constant SELECTON_RUNNING_JOBS =>       "/bioseq/bioSequence_scripts_and_constants/selecton_running_jobs.list";
use constant CONSEQ_RUNNING_JOBS =>       "/bioseq/bioSequence_scripts_and_constants/conseq_running_jobs.list";
use constant PEPITOPE_RUNNING_JOBS =>       "/bioseq/bioSequence_scripts_and_constants/pepitope_running_jobs.list";

# CGIs paths
use constant CONSURF_CGI_DIR =>             "/var/www/cgi-bin/ConSurf"; 

#general paths
use constant SERVERS_RESULTS_DIR =>         "/bioseq/data/results/";
use constant SERVERS_LOGS_DIR =>            "/bioseq/data/logs/";
use constant SEND_EMAIL_DIR =>              "/db1/Local/src/sendEmail"; # path on biocluster
use constant SEND_EMAIL_DIR_IBIS =>         "/bioseq/bioSequence_scripts_and_constants/sendEmail";  # path on ibis
use constant DAEMON_LOG_FILE =>             "/bioseq/bioSequence_scripts_and_constants/daemon.log";
use constant UPDATE_RUN_TIME_LOG_FILE =>    "/bioseq/bioSequence_scripts_and_constants/update_runTime.log";
use constant CONSURF_CGI =>                 "/var/www/cgi-bin/ConSurf";  #on ibis
use constant BIOSEQ_TEMP =>                 "/bioseq/temp/";

# servers urls:
use constant SELECTON_URL =>     "http://selecton.tau.ac.il";
use constant CONSEQ_URL =>       "http://conseq.tau.ac.il/";
use constant CONSURF_URL =>      "http://consurf.tau.ac.il/";
use constant NEW_CONSURF_URL =>  "http://consurftest.tau.ac.il/";
use constant EPITOPIA_URL =>     "http://epitopia.tau.ac.il/";
use constant PEPITOPE_URL =>     "http://pepitope.tau.ac.il/";
use constant QMF_URL =>          "http://quasimotifinder.tau.ac.il/";
use constant PATCHFINDER_URL =>  "http://patchfinder.tau.ac.il/";
use constant FASTML_URL =>       "http://ibis.tau.ac.il/fastml/";

#servers logs:
use constant CONSURF_LOG =>      "/bioseq/ConSurf_old/consurf.log"; 
use constant SELECTON_LOG =>     "/bioseq/Selecton/selecton.log"; 
use constant EPITOPIA_LOG =>     "/bioseq/epitopia/epitopia.log"; 
use constant CONSEQ_LOG =>       "/bioseq/ConSeq/conseq.log";  
use constant PEPITOPE_LOG =>     "/bioseq/pepitope/pepitope.log";

#servers results urls:
# servers urls:
use constant SELECTON_RESULTS_URL =>        SELECTON_URL."/results/";

#external databases
use constant PDB_DIVIDED =>         "/biodb/PDB/data/structures/divided/pdb/";
use constant SWISSPROT_DB =>        "/biodb/BLAST/Proteins/swissprot";
use constant UNIPROT_DB =>          "/biodb/BLAST/Proteins/uniprot";
use constant CLEAN_UNIPROT_DB =>    "/biodb/BLAST/Proteins/clean_uniprot";
use constant UNIREF90_DB =>         "/groups/bioseq.home/HAIM/UNIREF90/uniref90";
use constant CULLED_PDB =>         "/groups/bioseq.home/HAIM/PDBAA/pdbaaent";

use constant RCSB_WGET =>           "wget ftp://ftp.wwpdb.org/pub/pdb/data/structures/all/pdb/";

#internal databases
use constant EPITOPIA_DATA => "/bioseq/epitopia/data";

#external programs
use constant MUSCLE =>              "/share/apps/bin/muscle";  # on the lecs
use constant CLUSTALW =>            "/share/apps/bin/clustalw2"; # on the lecs
use constant TREE_VIEWER_DIR =>     "/bioseq/ConSurf_old/treeViewer/";
use constant PACC_path =>           "/bioseq/ConSeq/external_scripts/PACC/";
use constant RATE4SITE =>           "/bioseq/rate4site/rate4site";   # on the lecs
use constant RATE4SITE_SLOW =>      "/bioseq/rate4site/rate4site.doubleRep"; # On The lecs
#use constant CD_HIT_DIR =>          "/db1/Local/src/cd-hit_redundency/";
use constant CD_HIT_DIR =>          "/bioseq/cd_hit/";
use constant PREDICT_PACC =>	    "/bioseq/ConSeq/external_scripts/PACC/run.sh";
use constant MSA_to_HSSP =>	    "/bioseq/ConSeq/external_scripts/PACC/MSA2hssp.pl";

#internal programs
use constant EPITOPIA_EXECUTABLES => "/bioseq/epitopia/executables";

# constant values
use constant BLAST_MAX_HOMOLOGUES_TO_DISPLAY => 500;
use constant BLAST_PDB_MAX_HOMOLOGUES_TO_DISPLAY => 25;
use constant CONSURF_PIPE_FORM =>               "/bioseq/ConSurf_old/consurf_pipe.form";
use constant SELECTON_MAX_NUCLEOTIDE =>         15000;
use constant MAX_WALLTIME => "96:00:00";

# Queue Details
use constant BIOSEQ_NODE =>             "bioc01.tau.ac.il"; #Node on BioCluster dedicated to Bioseq runs (Not part of the queue)
use constant MAX_QUEUE_RUNS =>          60;

# external links
use constant RCSB_WEB =>                "http://www.rcsb.org/";
use constant PYMOL_WEB =>               "http://pymol.sourceforge.net/";
use constant CHIMERA_WEB =>             'http://www.rbvi.ucsf.edu/chimera/';
use constant CHIMERA_SAVING_FIGURE =>   'http://www.cgl.ucsf.edu/chimera/current/docs/UsersGuide/print.html';
use constant CHIMERA_DOWNLOAD =>        CHIMERA_WEB."download.html";
use constant MSA_CONVERT =>             'http://www.ebi.ac.uk/cgi-bin/readseq.cgi';
use constant MSA_FORMATS =>             'http://www.ebi.ac.uk/help/formats.html';

# redirect pages
use constant CONSURF_REDIRECT_PAGE => CONSURF_URL."too_many_runs.html";
use constant SELECTON_REDIRECT_PAGE => SELECTON_URL."/too_many_runs.html";
use constant CONSEQ_REDIRECT_PAGE => CONSEQ_URL."too_many_runs.html";
use constant PEPITOPE_REDIRECT_PAGE => PEPITOPE_URL."too_many_runs.html";

#faq pages
use constant CONSURF_TREE_FAQ => CONSURF_URL.'quick_help.html#note5';


#---------------------------------------------
sub print_to_output{
    my $OutHtmlFile = shift;
    my $server_name = shift;
    my $run_name = shift;
    my $recipient = shift;    
    
    open OUTPUT, ">>$OutHtmlFile";
    flock OUTPUT, 2;
    print OUTPUT "\n<p><font size=+3 color='red'>ERROR! $server_name session has been terminated: </font>\n<br><b>A system error occured during the calculation. Please try to run $server_name again in a few minutes.</b>\n</p>\n";
    print OUTPUT "<H3><center>For assistance please <a href=\"mailto:".ADMIN_EMAIL."?subject=".$server_name."%20Run%20No:%20".$run_name."\">contact us</a> and mention this number: $run_name</H3>\n";
    flock OUTPUT, 8;
    close OUTPUT;    
    &send_mail($server_name, $recipient, $run_name, "error","error") if ($recipient ne "NO");
    &stop_reload($OutHtmlFile);
}
#---------------------------------------------

# in case the desired mail report on error: the vars $email_subject and $email_message should be 'error'
sub send_mail { # to user
    my $server_name = shift;
    my $recipient = shift;
    my $run_name = shift;
    my $email_subject= shift;
    my $email_message = shift;
    my $email_attach = shift;
    my $from_server = "";
    $from_server = shift;
    my $OutputURL;
    my $mail;
    
    if ($server_name eq "Selecton") {$OutputURL = SELECTON_URL."/results/$run_name"."/output.html";}
    elsif ($server_name eq "ConSeq") {$OutputURL = CONSEQ_URL."results/$run_name"."/output.html";}
    elsif ($server_name eq "Epitopia") {$OutputURL = EPITOPIA_URL."results/$run_name"."/output.html";}
    elsif ($server_name eq "pepitope") {$OutputURL = PEPITOPE_URL."results/$run_name"."/output.html";}
    elsif ($server_name eq "ConSurf") {$OutputURL = CONSURF_URL."results/$run_name"."/output.html";}
    elsif ($server_name eq "QuasiMotiFinder") {$OutputURL = QMF_URL."results/$run_name"."/output.html";}
    elsif ($server_name eq "fastml") {$OutputURL = FASTML_URL."results/$run_name"."/output.html";}
        
    $email_subject = "Error in $server_name running" if $email_subject eq "error";
    $email_message = "Hello!\n\nUnfortunately there was an error while running the $server_name server.\nPlease click on the following link to see more details\nWe apologize for the inconvenience\n\n$OutputURL\n" if $email_message eq "error"; 
    chdir SEND_EMAIL_DIR;
    chdir SEND_EMAIL_DIR_IBIS if ($from_server eq "ibis");
    $mail ='perl sendEmail.pl -f \''.ADMIN_EMAIL.'\' -t \''.$recipient.'\' -u \''.$email_subject.'\' -s '.SMTP_SERVER.' -m \''.$email_message."\'";
    #$mail ='perl sendEmail.pl -f \''.ADMIN_EMAIL.'\' -t \''.$recipient.'\' -u \''.$email_subject.'\' -xu '.ADMIN_USER_NAME.' -xp '.ADMIN_PASSWORD.' -s '.SMTP_SERVER.' -m \''.$email_message."\'";
    if ($email_attach ne '') {$mail.=" -a $email_attach";}
    `$mail`;
}
#---------------------------------------------
sub stop_reload{
    my $OutHtmlFile = shift;
    
    sleep 10;
    open OUTPUT, "<$OutHtmlFile";
    my @output = <OUTPUT>;
    close OUTPUT;   
    open OUTPUT, ">$OutHtmlFile";
    foreach my $line (@output){  # we remove the refresh lines and the button which codes for Selecton cancelled job
        unless ($line =~ /REFRESH/i or $line =~ /NO-CACHE/i or $line =~ /ACTION=\"\/cgi\/kill_process.cgi/ or
            $line =~ /VALUE=\"Cancel Selecton Job\"/ or $line =~ /TYPE=hidden NAME=\"pid\"/ or 
            $line =~ /TYPE=hidden NAME=\"selecton_http\"/ or $line =~ /TYPE=hidden NAME=\"run_no\"/ or
            $line =~ /<!--job_/){
                print OUTPUT $line;
        }
    }
    close OUTPUT;
}
#---------------------------------------------
sub print_Q_status_in_html{
    my $html_file = shift;
    my $_status = shift;
    my $_time = shift;
    my $_estimated_run_time = shift;
    
    my ($line, $line1, $line2);
    my $out = "/bioseq/ELANA/from_GENERAL_CONST.txt";
        
    $_time = "" if ($_time eq "no");
    unless (open HTML, "+>>".$html_file) {
        return "print_Q_status_in_html : Could not open file $html_file to update the status. Status is: $_status  reason: $!\n";}
    else{
        flock HTML, 2;
        seek HTML, 0, 0; #rewind the pointer to the beginning
        my @html_lines = <HTML>; # read the contents into the array
        truncate HTML, 0; # remove all the information, The 0 represents the size of the file that we want
        foreach (@html_lines){            
            if(/<!--job_stat--><.+>Your job status is:<\/a> (.+)<br>/){
                if ($_status ne ""){
                    s/$1/$_status/;
                }
            }
            elsif(/<!--job_pass-->The time that passed since submitting the query is: (.+)<br>/){
                if($_time ne ""){
                    s/$1/$_time/;
                }
            }
            elsif(/<!--(job_time--)Estimated run time is: (-->)/ and $_estimated_run_time ne "none"){
                $line = $_;
                $line1 = $1;
                $line2 = $2;
                if ($_estimated_run_time =~ m/\d+:\d+:\d+:\d+/) {
                    $_estimated_run_time .= " days";
                }
                elsif ($_estimated_run_time =~ m/\d+:\d+:\d+/) {
                    $_estimated_run_time .= " hours";
                }
                elsif($_estimated_run_time =~ m/\d+:\d+/){
                    $_estimated_run_time .= " minutes";
                }
                $_ = $line; # since we make another RE comparison, the original values of $_ and $1 are changing, therefore we must save them at the beginning and change them back here.
                s/$line2/$_estimated_run_time<br>/; # the reason we first substitue the second part, is that the first part creates an expression --> which might be wrongly replaced with this value
                s/$line1/$line1>/;                
            }
        }
        print HTML $_ foreach (@html_lines);
        flock HTML, 8;
        close HTML;
        return "OK";
    }
}


# in case the desired mail report on error: the vars $email_subject and $email_message should be 'error'
sub send_mail2 { # to user
    my $server_name = shift;
    my $recipient = shift;
    my $run_name = shift;
    my $email_subject= shift;
    my $email_message = shift;
    my $email_attach = shift;
    my $from_server = shift;
    my $OutputURL;
    my $mail;
    
    if ($server_name eq "Selecton") {$OutputURL = SELECTON_URL."/results/$run_name"."/output.html";}
    elsif ($server_name eq "ConSeq") {$OutputURL = CONSEQ_URL."results/$run_name"."/output.html";}
    elsif ($server_name eq "Epitopia") {$OutputURL = EPITOPIA_URL."results/$run_name"."/output.html";}
    elsif ($server_name eq "pepitope") {$OutputURL = PEPITOPE_URL."results/$run_name"."/output.html";}
    elsif ($server_name eq "ConSurf") {$OutputURL = CONSURF_URL."results/$run_name"."/output.html";}
    elsif ($server_name eq "QuasiMotiFinder") {$OutputURL = QMF_URL."results/$run_name"."/output.html";}
    elsif ($server_name eq "fastml") {$OutputURL = FASTML_URL."results/$run_name"."/output.html";}
        
    $email_subject = "Error in $server_name running" if $email_subject eq "error";
    $email_message = "Hello!\n\nUnfortunately there was an error while running the $server_name server.\nPlease click on the following link to see more details\nWe apologize for the inconvenience\n\n$OutputURL\n" if $email_message eq "error"; 
    chdir SEND_EMAIL_DIR;
    chdir SEND_EMAIL_DIR_IBIS if ($from_server eq "ibis");
    $mail ='perl sendEmail.pl -f \''.ADMIN_EMAIL.'\' -t \''.$recipient.'\' -u \''.$email_subject.'\' -s '.SMTP_SERVER.' -m \''.$email_message."\'";
    #$mail ='perl sendEmail.pl -f \''.ADMIN_EMAIL.'\' -t \''.$recipient.'\' -u \''.$email_subject.'\' -xu '.ADMIN_USER_NAME.' -xp '.ADMIN_PASSWORD.' -s '.SMTP_SERVER.' -m \''.$email_message."\'";
    if ($email_attach ne '') {$mail.=" -a $email_attach";}
    $mail = 'sh -c \' $mail 2>/dev/null\'';
    `$mail`;
}
1;
