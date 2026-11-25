.class final Lcom/leanplum/br;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/leanplum/Newsfeed;


# direct methods
.method constructor <init>(Lcom/leanplum/Newsfeed;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/leanplum/br;->a:Lcom/leanplum/Newsfeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 245
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 1248
    iget-object v0, p0, Lcom/leanplum/br;->a:Lcom/leanplum/Newsfeed;

    invoke-virtual {v0, p1}, Lcom/leanplum/Newsfeed;->messageForId(Ljava/lang/String;)Lcom/leanplum/NewsfeedMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/NewsfeedMessage;->deliveryTimestamp()Ljava/util/Date;

    move-result-object v0

    .line 1249
    iget-object v1, p0, Lcom/leanplum/br;->a:Lcom/leanplum/Newsfeed;

    invoke-virtual {v1, p2}, Lcom/leanplum/Newsfeed;->messageForId(Ljava/lang/String;)Lcom/leanplum/NewsfeedMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leanplum/NewsfeedMessage;->deliveryTimestamp()Ljava/util/Date;

    move-result-object v1

    .line 1250
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 245
    return v0
.end method
