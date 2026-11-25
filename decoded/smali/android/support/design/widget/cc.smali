.class Landroid/support/design/widget/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/ck;


# instance fields
.field final synthetic a:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0

    .prologue
    .line 1426
    iput-object p1, p0, Landroid/support/design/widget/cc;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/cf;)V
    .locals 2

    .prologue
    .line 1429
    iget-object v0, p0, Landroid/support/design/widget/cc;->a:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, v0, Landroid/support/design/widget/TextInputLayout;->d:Landroid/support/design/widget/ae;

    invoke-virtual {p1}, Landroid/support/design/widget/cf;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ae;->b(F)V

    .line 1430
    return-void
.end method
