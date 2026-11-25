.class public Landroid/support/customtabs/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/customtabs/j;

.field private final b:Landroid/support/customtabs/a;


# direct methods
.method constructor <init>(Landroid/support/customtabs/j;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/customtabs/h;->a:Landroid/support/customtabs/j;

    .line 51
    new-instance v0, Landroid/support/customtabs/i;

    invoke-direct {v0, p0}, Landroid/support/customtabs/i;-><init>(Landroid/support/customtabs/h;)V

    iput-object v0, p0, Landroid/support/customtabs/h;->b:Landroid/support/customtabs/a;

    .line 89
    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/customtabs/h;->a:Landroid/support/customtabs/j;

    invoke-interface {v0}, Landroid/support/customtabs/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 102
    instance-of v0, p1, Landroid/support/customtabs/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 103
    :cond_0
    check-cast p1, Landroid/support/customtabs/h;

    .line 104
    invoke-virtual {p1}, Landroid/support/customtabs/h;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/customtabs/h;->a:Landroid/support/customtabs/j;

    invoke-interface {v1}, Landroid/support/customtabs/j;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/support/customtabs/h;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
