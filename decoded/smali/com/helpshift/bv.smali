.class Lcom/helpshift/bv;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/helpshift/bv;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/helpshift/bv;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;)V

    .line 52
    return-void
.end method
