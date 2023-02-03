#! /bin/sh

if [ -e output.txt ]; 
then
    rm output.txt
fi

echo '====================================================================================================' >> output.txt
echo `<full_package_updates_check.py_path> >> output.txt`
echo `landscape-sysinfo >> output.txt`
echo '====================================================================================================' >> output.txt
echo 'Users Online:' >> output.txt
echo `w | tail -n +2 >> output.txt`
echo '====================================================================================================' >> output.txt
echo `iostat -c | tail -n +3 >> output.txt`
echo '====================================================================================================' >> output.txt

sed -e '/^$/d' -e 's/$/ <br>/' -i output.txt

info=`cat output.txt`
delimiter="`date +%Y%m%d%H%M%S`"
newdate=$(TZ='<local_time-zone-ex:"America/Denver">' date)

from="<smtp_email_address>"
to="<recipient_email_address>"
subject="<email_subject>"

cat << EOF | sendmail -t
From: $from
To: $to
Subject: $subject
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary="${delimiter}"

--${delimiter}
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<style>
pre {
font-family: courier new;
white-space: pre;
line-height : 10px;
}
</style>

<HTML><br>
Current Time: &nbsp;&nbsp; $newdate <br><br>
<pre>$info</pre>
</body>
</html>

EOF
