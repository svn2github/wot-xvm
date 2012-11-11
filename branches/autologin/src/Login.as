class Login extends net.wargaming.login.Login
{
    static var sent: Boolean = false;

    function draw()
    {
        super.draw();
        if (sent)
            return;
        sent = true;
        var me = this;
        var intervalId;
        intervalId = setInterval(function() {
            if (me.visible == true)
            {
                clearInterval(intervalId);
                me.form_mc.onSubmit({type:"click"});
            }
        }, 10);
    }
}
