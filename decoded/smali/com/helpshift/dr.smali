.class Lcom/helpshift/dr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/helpshift/do;


# direct methods
.method constructor <init>(Lcom/helpshift/do;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/helpshift/dr;->a:Lcom/helpshift/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/helpshift/dr;->a:Lcom/helpshift/do;

    iget-object v1, p0, Lcom/helpshift/dr;->a:Lcom/helpshift/do;

    invoke-static {v1}, Lcom/helpshift/do;->f(Lcom/helpshift/do;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/do;->a(Ljava/lang/String;)V

    .line 236
    return-void
.end method
