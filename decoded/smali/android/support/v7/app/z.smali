.class Landroid/support/v7/app/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/f;


# instance fields
.field final synthetic a:Landroid/support/v7/app/x;


# direct methods
.method constructor <init>(Landroid/support/v7/app/x;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Landroid/support/v7/app/z;->a:Landroid/support/v7/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v7/app/z;->a:Landroid/support/v7/app/x;

    invoke-virtual {v0}, Landroid/support/v7/app/x;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(I)V

    .line 240
    :cond_0
    return-void
.end method
