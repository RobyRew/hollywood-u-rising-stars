.class public final Landroid/support/v7/media/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroid/support/v7/media/o;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/support/v7/media/o;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/o;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    sput-object v0, Landroid/support/v7/media/o;->b:Landroid/support/v7/media/o;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/support/v7/media/o;->c:Landroid/os/Bundle;

    .line 59
    iput-object p2, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    .line 60
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/support/v7/media/o;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v7/media/o;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/o;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/support/v7/media/o;->b()V

    .line 69
    iget-object v0, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    return-object v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Landroid/support/v7/media/o;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "controlCategories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    .line 75
    iget-object v0, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    .line 79
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/support/v7/media/o;->b()V

    .line 149
    iget-object v0, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/support/v7/media/o;->b()V

    .line 157
    iget-object v0, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v7/media/o;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 165
    instance-of v0, p1, Landroid/support/v7/media/o;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Landroid/support/v7/media/o;

    .line 167
    invoke-virtual {p0}, Landroid/support/v7/media/o;->b()V

    .line 168
    invoke-virtual {p1}, Landroid/support/v7/media/o;->b()V

    .line 169
    iget-object v0, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/media/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/support/v7/media/o;->b()V

    .line 177
    iget-object v0, p0, Landroid/support/v7/media/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string/jumbo v1, "MediaRouteSelector{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v1, "controlCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/media/o;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
