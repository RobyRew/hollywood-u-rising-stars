.class Lcom/helpshift/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/helpshift/ar;->a:Lcom/helpshift/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/helpshift/ar;->a:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->H()V

    .line 1061
    return-void
.end method
