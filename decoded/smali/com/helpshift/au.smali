.class Lcom/helpshift/au;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/helpshift/au;->a:Lcom/helpshift/al;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/helpshift/au;->a:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->u()V

    .line 1236
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.helpshift.failedMessageRequest"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1237
    iget-object v1, p0, Lcom/helpshift/au;->a:Lcom/helpshift/al;

    invoke-static {v1}, Lcom/helpshift/al;->d(Lcom/helpshift/al;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1238
    return-void
.end method
