.class final Lcom/amazon/ags/client/whispersync/model/LatestStringList$1;
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
        "Lcom/amazon/ags/client/whispersync/model/StringElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/ags/client/whispersync/model/StringElement;Lcom/amazon/ags/client/whispersync/model/StringElement;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 48
    invoke-virtual {p2}, Lcom/amazon/ags/client/whispersync/model/StringElement;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/model/StringElement;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 49
    cmp-long v4, v2, v6

    if-nez v4, :cond_3

    .line 51
    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/model/StringElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 52
    invoke-virtual {p2}, Lcom/amazon/ags/client/whispersync/model/StringElement;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/ags/client/whispersync/model/StringElement;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    .line 56
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/model/StringElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/ags/client/whispersync/model/StringElement;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 61
    :cond_3
    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lcom/amazon/ags/client/whispersync/model/StringElement;

    check-cast p2, Lcom/amazon/ags/client/whispersync/model/StringElement;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ags/client/whispersync/model/LatestStringList$1;->compare(Lcom/amazon/ags/client/whispersync/model/StringElement;Lcom/amazon/ags/client/whispersync/model/StringElement;)I

    move-result v0

    return v0
.end method
