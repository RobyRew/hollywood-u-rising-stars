.class Lcom/helpshift/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/s;


# direct methods
.method constructor <init>(Lcom/helpshift/s;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/helpshift/v;->a:Lcom/helpshift/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/helpshift/v;->a:Lcom/helpshift/s;

    iget-object v1, p0, Lcom/helpshift/v;->a:Lcom/helpshift/s;

    invoke-static {v1}, Lcom/helpshift/s;->f(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/helpshift/s;->a(Lcom/helpshift/s;Ljava/lang/String;I)V

    .line 396
    return-void
.end method
