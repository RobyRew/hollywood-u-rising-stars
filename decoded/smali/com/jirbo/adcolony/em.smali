.class Lcom/jirbo/adcolony/em;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 168
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ba;->j:Z

    .line 169
    invoke-virtual {p0}, Lcom/jirbo/adcolony/em;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/jirbo/adcolony/em;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 170
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 175
    sget-object v0, Lcom/jirbo/adcolony/ba;->E:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    const-string/jumbo v0, "Monitor pinger exiting."

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->b(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/ba;->j:Z

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/ba;->i:Z

    if-nez v0, :cond_2

    .line 184
    invoke-static {}, Lcom/jirbo/adcolony/el;->a()V

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/jirbo/adcolony/em;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/jirbo/adcolony/em;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
