.class Lcom/helpshift/cg;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/helpshift/cg;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/helpshift/cg;->a:Lcom/helpshift/bu;

    invoke-virtual {v0}, Lcom/helpshift/bu;->b()V

    .line 59
    return-void
.end method
