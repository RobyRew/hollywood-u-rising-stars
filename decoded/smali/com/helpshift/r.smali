.class Lcom/helpshift/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/m;


# direct methods
.method constructor <init>(Lcom/helpshift/m;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/helpshift/r;->a:Lcom/helpshift/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/helpshift/r;->a:Lcom/helpshift/m;

    invoke-static {v0}, Lcom/helpshift/m;->d(Lcom/helpshift/m;)V

    .line 234
    return-void
.end method
