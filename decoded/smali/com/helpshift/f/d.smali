.class public Lcom/helpshift/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/helpshift/f/d;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    instance-of v0, p0, Lcom/helpshift/app/l;

    if-eqz v0, :cond_0

    .line 21
    check-cast p0, Lcom/helpshift/app/l;

    invoke-virtual {p0}, Lcom/helpshift/app/l;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
