import Head from "next/head";
import Image from "next/image";
import {
  Button,
  Flex,
  Heading,
  useColorMode,
  VStack,
  Select,
  Breadcrumb,
  BreadcrumbItem,
  BreadcrumbLink,
  Box,
} from "@chakra-ui/react";
import Chart from "../components/Chart";
import Layout from "../components/Layout";
import Card from "../components/Card";
import React, { useState, useEffect } from "react";

export default function Progress() {
  //   const data = {
  //     labels: ["Thing 1", "Thing 2", "Thing 3", "Thing 4", "Thing 5", "Thing 6"],
  //     datasets: [
  //       {
  //         label: "Your Performance",
  //         //       data: [20, 60, 40, 50, 80, 60],
  //         data: [2, 6, 4, 5, 8, 6],
  //         backgroundColor: "rgba(255, 99, 132, 0.2)",
  //         borderColor: "rgba(255, 99, 132, 1)",
  //         borderWidth: 1,
  //       },
  //   };

  //   data = {
  //     Integration: 4,
  //     Derivatives: 6,
  //     Conics: 3,
  //     Proofs: 8,
  //     "Complex Numbers": 4,
  //     "Coordinate Geometry": 5,
  //   };

  //   let categories = [];
  //   console.log(Object.keys(data));

  useEffect(async () => {
    const options = {
      method: "GET",
    };

    const res = await fetch(
      `https://api.production.hackathon.outki.org/get_stats_by_id?studentID=4&searchValue=1&searchMode=subject`,
      options
    );
    const data = await res.json();
    console.log(data);
  }, []);

  return (
    <Layout>
      <VStack style={{ minWidth: "calc(100vw - 17em)" }}>
        <Breadcrumb alignSelf="start">
          <BreadcrumbItem>
            <BreadcrumbLink href="#">All</BreadcrumbLink>
          </BreadcrumbItem>
          <BreadcrumbItem>
            <BreadcrumbLink href="#">HSC Maths Extension 2</BreadcrumbLink>
          </BreadcrumbItem>
          <BreadcrumbItem isCurrentPage>
            <BreadcrumbLink href="#">s</BreadcrumbLink>
          </BreadcrumbItem>
        </Breadcrumb>
        <Heading as="h3" color="#1E2D38" alignSelf="start" mb="1em">
          Progress
        </Heading>
        <Chart />
      </VStack>
    </Layout>
  );
}
