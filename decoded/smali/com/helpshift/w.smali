.class Lcom/helpshift/w;
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
    .line 400
    iput-object p1, p0, Lcom/helpshift/w;->a:Lcom/helpshift/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/helpshift/w;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->n(Lcom/helpshift/s;)V

    .line 404
    return-void
.end method
