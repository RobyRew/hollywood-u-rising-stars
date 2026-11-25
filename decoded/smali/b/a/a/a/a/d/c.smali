.class Lb/a/a/a/a/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lb/a/a/a/a/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/a/d/b;


# direct methods
.method constructor <init>(Lb/a/a/a/a/d/b;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lb/a/a/a/a/d/c;->a:Lb/a/a/a/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/a/d/d;Lb/a/a/a/a/d/d;)I
    .locals 4

    .prologue
    .line 211
    iget-wide v0, p1, Lb/a/a/a/a/d/d;->b:J

    iget-wide v2, p2, Lb/a/a/a/a/d/d;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 208
    check-cast p1, Lb/a/a/a/a/d/d;

    check-cast p2, Lb/a/a/a/a/d/d;

    invoke-virtual {p0, p1, p2}, Lb/a/a/a/a/d/c;->a(Lb/a/a/a/a/d/d;Lb/a/a/a/a/d/d;)I

    move-result v0

    return v0
.end method
