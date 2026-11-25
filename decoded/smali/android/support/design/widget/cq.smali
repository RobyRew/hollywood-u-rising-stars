.class Landroid/support/design/widget/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/design/widget/cp;


# direct methods
.method constructor <init>(Landroid/support/design/widget/cp;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Landroid/support/design/widget/cq;->a:Landroid/support/design/widget/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/widget/cq;->a:Landroid/support/design/widget/cp;

    invoke-virtual {v0}, Landroid/support/design/widget/cp;->i()V

    .line 52
    return-void
.end method
