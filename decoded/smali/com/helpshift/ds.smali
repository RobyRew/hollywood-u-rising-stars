.class Lcom/helpshift/ds;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/do;


# direct methods
.method constructor <init>(Lcom/helpshift/do;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/helpshift/ds;->a:Lcom/helpshift/do;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 291
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/helpshift/ew;

    .line 292
    iget-object v1, p0, Lcom/helpshift/ds;->a:Lcom/helpshift/do;

    invoke-static {v1, v0}, Lcom/helpshift/do;->a(Lcom/helpshift/do;Lcom/helpshift/ew;)V

    .line 293
    return-void
.end method
