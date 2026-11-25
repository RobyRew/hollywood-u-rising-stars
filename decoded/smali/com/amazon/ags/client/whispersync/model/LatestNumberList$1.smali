.class final Lcom/amazon/ags/client/whispersync/model/LatestNumberList$1;
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
        "Lcom/amazon/ags/client/whispersync/model/NumberElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/ags/client/whispersync/model/NumberElement;Lcom/amazon/ags/client/whispersync/model/NumberElement;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 17
    invoke-virtual {p2}, Lcom/amazon/ags/client/whispersync/model/NumberElement;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/model/NumberElement;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 18
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 20
    iget-object v0, p1, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    iget-object v1, p2, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    .line 22
    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/amazon/ags/client/whispersync/model/NumberElement;

    check-cast p2, Lcom/amazon/ags/client/whispersync/model/NumberElement;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ags/client/whispersync/model/LatestNumberList$1;->compare(Lcom/amazon/ags/client/whispersync/model/NumberElement;Lcom/amazon/ags/client/whispersync/model/NumberElement;)I

    move-result v0

    return v0
.end method
