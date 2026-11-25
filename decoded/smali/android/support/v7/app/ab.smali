.class Landroid/support/v7/app/ab;
.super Landroid/support/v7/app/ai;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/v;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/ai;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/v;)V

    .line 34
    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/support/v7/app/ac;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/ac;-><init>(Landroid/support/v7/app/ab;Landroid/view/Window$Callback;)V

    return-object v0
.end method
