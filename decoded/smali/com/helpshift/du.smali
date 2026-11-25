.class public final Lcom/helpshift/du;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/ew;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/helpshift/al;

.field private c:Lcom/helpshift/dx;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/helpshift/du;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 43
    new-instance v0, Lcom/helpshift/al;

    invoke-direct {v0, p2}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/du;->b:Lcom/helpshift/al;

    .line 44
    iget-object v0, p0, Lcom/helpshift/du;->b:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iput-object v0, p0, Lcom/helpshift/du;->c:Lcom/helpshift/dx;

    .line 45
    sget-object v0, Lcom/helpshift/du;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/helpshift/du;->d:I

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/du;->b:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->b()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/helpshift/du;->a:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/helpshift/du;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 51
    sget-object v0, Lcom/helpshift/du;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ew;

    invoke-virtual {v0}, Lcom/helpshift/ew;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iput v1, p0, Lcom/helpshift/du;->d:I

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/du;->notifyDataSetChanged()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    return-void

    .line 50
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/helpshift/ek;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/helpshift/du;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/helpshift/du;->d:I

    .line 33
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/helpshift/du;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 78
    sget-object v0, Lcom/helpshift/du;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ew;

    .line 80
    new-instance v1, Lcom/helpshift/do;

    invoke-direct {v1}, Lcom/helpshift/do;-><init>()V

    .line 82
    invoke-virtual {v0}, Lcom/helpshift/ew;->a()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string/jumbo v3, "sectionPublishId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v2}, Lcom/helpshift/do;->setArguments(Landroid/os/Bundle;)V

    .line 87
    return-object v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/helpshift/du;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/ew;

    .line 68
    invoke-virtual {v0}, Lcom/helpshift/ew;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
