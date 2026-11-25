.class public Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->a:Ljava/util/Vector;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeRunnables()V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 18
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 19
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 22
    return-void
.end method

.method public static queueRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKRunnableQueue;->a:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method
