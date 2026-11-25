.class public abstract Lcom/helpshift/app/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/helpshift/app/a;->a:Landroid/app/Activity;

    .line 20
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/helpshift/app/a;
    .locals 2

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 24
    new-instance v0, Lcom/helpshift/app/h;

    invoke-direct {v0, p0}, Lcom/helpshift/app/h;-><init>(Landroid/app/Activity;)V

    .line 26
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/helpshift/app/ActionBarHelperBase;

    invoke-direct {v0, p0}, Lcom/helpshift/app/ActionBarHelperBase;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;
    .locals 0

    .prologue
    .line 35
    return-object p1
.end method

.method public abstract a(I)V
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public abstract a(Landroid/view/MenuItem;)V
.end method

.method public abstract a(Landroid/view/MenuItem;Lcom/helpshift/f/e;)V
.end method

.method public abstract a(Landroid/view/MenuItem;Lcom/helpshift/f/g;)V
.end method

.method public a(Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b(Landroid/view/MenuItem;)Ljava/lang/String;
.end method

.method public abstract b(I)V
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public abstract b(Z)V
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public abstract c(Landroid/view/MenuItem;)V
.end method
