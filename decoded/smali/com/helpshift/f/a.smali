.class public final Lcom/helpshift/f/a;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private a:Z


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/helpshift/f/a;->a:Z

    .line 38
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/helpshift/f/a;->a:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/helpshift/f/a;->a:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
