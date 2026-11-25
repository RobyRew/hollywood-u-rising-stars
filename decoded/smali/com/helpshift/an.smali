.class Lcom/helpshift/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/helpshift/am;


# direct methods
.method constructor <init>(Lcom/helpshift/am;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/helpshift/an;->a:Lcom/helpshift/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/helpshift/an;->a:Lcom/helpshift/am;

    iget-object v0, v0, Lcom/helpshift/am;->b:Lcom/helpshift/al;

    invoke-static {v0}, Lcom/helpshift/al;->b(Lcom/helpshift/al;)V

    .line 137
    invoke-static {}, Lcom/helpshift/al;->x()V

    .line 138
    return-void
.end method
