.class Lcom/helpshift/dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/helpshift/do;


# direct methods
.method constructor <init>(Lcom/helpshift/do;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/helpshift/dp;->a:Lcom/helpshift/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/helpshift/dp;->a:Lcom/helpshift/do;

    invoke-static {v0}, Lcom/helpshift/do;->a(Lcom/helpshift/do;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/helpshift/dp;->a:Lcom/helpshift/do;

    invoke-static {v0}, Lcom/helpshift/do;->b(Lcom/helpshift/do;)Lcom/helpshift/app/a;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/dp;->a:Lcom/helpshift/do;

    invoke-static {v1}, Lcom/helpshift/do;->a(Lcom/helpshift/do;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->c(Landroid/view/MenuItem;)V

    .line 125
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
