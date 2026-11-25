.class Lcom/helpshift/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/helpshift/o;


# direct methods
.method constructor <init>(Lcom/helpshift/o;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/helpshift/p;->a:Lcom/helpshift/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/helpshift/p;->a:Lcom/helpshift/o;

    iget-object v0, v0, Lcom/helpshift/o;->a:Lcom/helpshift/n;

    iget-object v0, v0, Lcom/helpshift/n;->a:Lcom/helpshift/m;

    invoke-static {v0}, Lcom/helpshift/m;->a(Lcom/helpshift/m;)V

    .line 75
    return-void
.end method
