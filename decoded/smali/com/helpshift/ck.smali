.class Lcom/helpshift/ck;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/helpshift/ck;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/helpshift/ck;->a:Lcom/helpshift/bu;

    invoke-static {v0, p1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Landroid/os/Message;)V

    .line 150
    return-void
.end method
