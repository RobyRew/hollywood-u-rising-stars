.class Landroid/support/v7/widget/bu;
.super Landroid/support/v7/widget/br;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/br;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroid/support/v7/widget/bv;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bv;-><init>(Landroid/support/v7/widget/bu;)V

    sput-object v0, Landroid/support/v7/widget/fs;->c:Landroid/support/v7/widget/ft;

    .line 38
    return-void
.end method
