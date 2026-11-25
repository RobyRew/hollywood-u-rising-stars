.class Lcom/helpshift/y;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/s;


# direct methods
.method constructor <init>(Lcom/helpshift/s;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/helpshift/y;->a:Lcom/helpshift/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/helpshift/y;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->n(Lcom/helpshift/s;)V

    .line 162
    iget-object v0, p0, Lcom/helpshift/y;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->l(Lcom/helpshift/s;)V

    .line 163
    return-void
.end method
